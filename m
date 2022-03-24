Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990D81FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 10:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648117018;
	h=To:Subject:From:Message-Id:Date;
	bh=+5vfvHAhVpgbqqptB3A6oszNsHGgB24d0RpGTK8jS/A=;
	b=E495tblEYgQzneaygKjazeVBbQVaLZfFeLyQVLQoPWPODvD+YKwzg4X2TZOOsDdl
	ekgWSaHrLTMuD0hmknrwHQ/5R8h1ll5gjhRWYsWKjF1AQ3ZEbQw3lO2jZX2ESduVClC
	ZWE15kbhVAVWxk0puN1OMwl0AOrVNMwY+YNVzj4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648117018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+5vfvHAhVpgbqqptB3A6oszNsHGgB24d0RpGTK8jS/A=;
	b=beR0dp+cQD9dgWaHae/uCJrPKzhKYUA7zgMyD06bPUh4POLNw7uiyzbl0Oewgahy
	VUZl4xlJje/YaCzlMF+UIohvFqxtvJy1u2hQNmXyH6BwExFyfGyZCADN0Rp+/GuuIcw
	U9JExHrn6CfYz7Xv057SNtql0Vp1GzezbYXIKNsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb6deee8-dedcb9b7-4f2e-4733-991b-1922f4adee8c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f2d422d2fa4fc17347de45ad8f80f9d9297ede72d6c021078ac86572d46af5f
Date: Thu, 24 Mar 2022 10:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648117018
