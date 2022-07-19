Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3669EA1
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 04:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658205412;
	h=To:Subject:From:Message-Id:Date;
	bh=fVy8d6dpJLlEu2ECPitpFHLHQzW+o81etb0DDbp7RAE=;
	b=c4egkAsTUPrOchX5z5KzpIyxibikNuwmbHVj3UIxxQqVI1ZXJVYkxSo/X6nrNAc6
	ditNl/yjCr96u6FUfMPW9jOjpCmFyP2ssZiziVpoYHh6ja85WKrBZivHD62nnYjyf/W
	ZlqoWA+rfH75deNgcTHw8ykyfOQXOvPqKaXQxufg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658205412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fVy8d6dpJLlEu2ECPitpFHLHQzW+o81etb0DDbp7RAE=;
	b=PxyAe/IazSYEr4uaCJWCAtjZbtTH4Sk8AE8Dvh8Nrk2eQdvmT46djaFbacdqo5c+
	01tUwD2vmL8dJByWQfjvrorPWjZ1Rd620alOmsQANLDektV0niAsoDG5q/0hU0qOL/P
	tQnE0arcgPJtpKY00PE46K3ZzSuUQqfYewwAsCxw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018214be9baa-639bb9d0-f9f5-4293-8975-4f3985fe2331-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5c2c96fde39a6ccaa4ecb40fef292a958b706146287ec947121aa9b7f74a9a5
Date: Tue, 19 Jul 2022 04:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658205412
