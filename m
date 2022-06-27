Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6222CA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656335812;
	h=To:Subject:From:Message-Id:Date;
	bh=DK2S2BvMiyBqWZUuJBr3sYbrGCL7AYcgFl+mASSSHtc=;
	b=J9+rpz6lnvHPsqNbZNzJpzwKuGnjdSKV1t0gF8vY1/EPqXNfwahJUiw8LyPFA1QP
	PyeTVcm2MMiHIWjsGy7fQvFNdUg1wPqJfO0EFUdNN+DEMCykQ9R0yuxymhzPK95WdRw
	gfW+QYb6iit9GMZkXxrTsa9sA2QcIAB3z7bnMlSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656335812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DK2S2BvMiyBqWZUuJBr3sYbrGCL7AYcgFl+mASSSHtc=;
	b=lEjKQuxPacderWEMHfX2uX5Uo6ymwdk9eebdu7C2A3LYRu9PljwFyhz+yjHFQuyC
	ddCLPoB/9D5dx3DX1fVt2SBn1A3llpVRTFuthb6Li/XBm2wz8g8D7I2ouN5sfqVNTN1
	eI4KR7Ve/msDKBkgniLoOtv4yluYuhK5DkfwA8t4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a54ec6db-68bc5f0e-f3ae-40c9-b2b3-8e257a718a9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd18617ea4054af3615921835a2694e2db1bc07f09709292c3a3c85fc281c220
Date: Mon, 27 Jun 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656335812
