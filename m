Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393DC33C3
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 15:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658675212;
	h=To:Subject:From:Message-Id:Date;
	bh=Iz/mCJ/DLydqGBcTHll0kV4SRKzA/TxiQmpqd765vDQ=;
	b=QhbH8xt5CO0+yWncyyL4Uauszky6tjxJnHH7L/vBU5+sollrJEIkFqVmA/dsVeWi
	GHczAADo1FtLBHoxBMJBtz5sREPFUyfNIfDlbmKzpzFfSljWq8VIhOEft7vqdQI2prY
	HXCSYwioHw24CWf0LiRcLe8ygAZ/36lYmRgK0PH8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658675212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iz/mCJ/DLydqGBcTHll0kV4SRKzA/TxiQmpqd765vDQ=;
	b=AgQaDcxqeKbR7VAVe4d91t2abHsUuYfHb7NJT2y/wVbRfOiDYmdgkgVpGiBKxNd/
	ZmflWTrigcjMG/Vo3pUzSnneP+xkuN3OkhULyNCm814SLp+l8OSUtQn4eY1iGYSBzvJ
	sZnNwiC/fMtvfS7l4+ZF1IFrnDnH5n66AEVLXOgI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018230bf30ab-698436ae-c73b-41c8-9f82-1b5ecf2fd6d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28c17c5e39e5faed3f152dec6d0c72f37a3981bba1c42d3ed1d497f63297df71
Date: Sun, 24 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658675212
