Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB637A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658825212;
	h=To:Subject:From:Message-Id:Date;
	bh=ZUFicZVELdHv6le3qh+Q7j3amDEflenvC7qiFZP6psU=;
	b=ZtVesnYW1/UpOzPyY1DZgiXvp0c2DvSOHqWwn0FXz1wh0CRq1bk4k9HtC70rCA44
	500Y5ZHGfMSFbPi9FbW+z8afDFhB/IpUJ6S3ZI1vtLfMg0NrwSdCuNjbIMiMtRkN3i6
	SXe/gPkM03HtST2h/4RryAeIWyG1ev8IWPN8qJdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658825212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZUFicZVELdHv6le3qh+Q7j3amDEflenvC7qiFZP6psU=;
	b=Kx18Rlx3t0W2HWOyXgg2W6XHgRwWDnmfLrp7nd18Ynvt6rG+aZxatpbtko0H00P2
	qdays0r3NzcBiUuWs/hNewSHkRq6jZTqpp8q5bnKoT+D0Sg5VztJ4wpTjQvIsLPwSfR
	dFWEPEnSIGghSv2T5p5sNDaAgQ2KoNHiMXMEyous=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239b0019c-8504455c-5a78-44cf-81ed-a9c2bba0007e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b399b7a0d9dea5143571511d980ac5eb46b35af4819a62d1571ab9d0172b6bfd
Date: Tue, 26 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658825212
