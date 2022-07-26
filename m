Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8745D7A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658828812;
	h=To:Subject:From:Message-Id:Date;
	bh=MUDPo+0gEoPEeEiSJNDgmGIQwDPlm+MHTHIgDZ0DlCA=;
	b=jMv1BC6AVFrdNqR/Gl+lEHua35JdLrIqdHLGnQ1ElL2H4RF7R40vWpG1KYo5bw/u
	W/BCegJ1uFLVCkcI45mR6qwiM4FgPRqX5mhRvdVO9JwTG2eW8TnfkAYTOBMBOgzlfGd
	utE1JkVuSnnoJLxiaV+1njF1ZkUfZxbGgC+8OA4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658828812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MUDPo+0gEoPEeEiSJNDgmGIQwDPlm+MHTHIgDZ0DlCA=;
	b=aWl3gnxL5ktO3iKwyQy5dQa6cauzPFQwZ4yZ+SxLF+rx5XKtlMVUMNyeudZ3z/tC
	NZNRhVV81hFyUn7IP62W0MFCxeon7IG++yFjDyynbCSSIMjoiE6VV4wlsIAzxJszIiL
	GduA63dNWMI9sFlk8SD3uiVBnYHCryXRGeo3FwfE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239e6efe5-acf24ae4-c8cc-4fb4-aade-174f7059ed3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba34d3a530fd349facf0993ae682fba272f7531d54f6f3e7b56786d28a0778b9
Date: Tue, 26 Jul 2022 09:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658828812
