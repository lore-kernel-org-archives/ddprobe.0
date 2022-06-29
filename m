Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138727A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656475612;
	h=To:Subject:From:Message-Id:Date;
	bh=LLECTy/Gtk7Xk1wmvSuXsrM5UitXT69lun5Qzq2Yoe0=;
	b=M7Fl5tZ+Zb3L3Shyd7XFzwb+B1PImVr7mgHz0B4/AKnCrRoSCNryLDrijvZCoVoe
	w0R84tR8B5Tb33AYLqTdPn7cPa7ePKbeWsFHmVbe9Yn0TEPfqFFtvZ/NbL72f/8eQYs
	vg86LjKdyuNQPBI3zNQrqjb4AtuOKt/a5NY/hCdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656475612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LLECTy/Gtk7Xk1wmvSuXsrM5UitXT69lun5Qzq2Yoe0=;
	b=DjCvKoikAbiV5BQZ3AvebTya5NGiv/+Ojwd6NAQo1Xy6JmGCaxRWybItrnfE5ycC
	ZFBjI6VSgnu6lwbhOgN0tzVVCagVtCOO1OzGkoe312IXBNWQP4U1rs5JlT6dWvCIEyD
	utYYOdVR10NxgheCrr3AJjsVyijWJHewQJA9GNbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ada3f4ab-25229e98-4da7-451e-84fe-2d2aec67a9fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4bb5a152d4e45080453213c76b8a7e518941222eaa0babb655765ad00abf3d5
Date: Wed, 29 Jun 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656475612
