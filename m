Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24558393
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 16:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657990012;
	h=To:Subject:From:Message-Id:Date;
	bh=iuGp2sM5kDTznye2PSUYTEIoIZ/Ob0KxiojiMxNHqEM=;
	b=hpoLRlHBkLnbhCEScFXX3+UV7vf2ofXRaNRXxtrURm1yfSekVozsE8//53TwbGj8
	BeOZZD9j/xXQD0jdSBb6/MrlCh/IkcHDGfKChBUOqwzFtqduqzkqMvS5/GG+6EQ2Fjo
	/pEWjNYFLyUe8vnrPCp7qPGK8qME344wUvO7sw4g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657990012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iuGp2sM5kDTznye2PSUYTEIoIZ/Ob0KxiojiMxNHqEM=;
	b=VR8sYQdoT+Wn9jXbzbNYuhxgD9GmhIpQW43xrnNrAQb/LsaVNM41E5kiZhvpKUks
	K1a7Dzjacs4OrELaWua+BjaoCvMWJfJFlVWz94mOG7ulx0cqdqd5cPwS6nx0BtoTbV0
	povrlU435mSFcx4iV0O5zZflMdcIuws5oshK0TE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018207e7ddd7-4b909a57-ba3c-4e76-bd47-38861bb70253-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d57c3d1b42021fed75a82b459973e6929ca7bfadaa67d1ef2985d486f5d0ffde
Date: Sat, 16 Jul 2022 16:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657990012
