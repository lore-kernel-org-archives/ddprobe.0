Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD9E7E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 20:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652040418;
	h=To:Subject:From:Message-Id:Date;
	bh=mYcgWfkMOErzCe27k3aqfPu/kw/YAMrP21GnSaNuqNc=;
	b=E/eq2goN45XMFAoQr3HJvmIkGmNiKTOa/xdIFPDWbmW3sNrMlIIj2tGymu/LM68f
	QwG0jrYJJez77mQQQr9+TlRt57XgsDbzSy+iQzhsAlSN16NWbLSjDH039t6WRTFjMl+
	aTtgxdzBBWI6/RyhO2smj3uo87Xh98uVvCrrY2Y4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652040418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mYcgWfkMOErzCe27k3aqfPu/kw/YAMrP21GnSaNuqNc=;
	b=kdrh3OJPejh0uSNmoLjWYUE2xaoCRyDElzSSsj1PM6fEwmKkVGu3ScOQMyn8qHam
	TfyZ693NDIaFU3raqSDlp/DXz26HcbOG0rZGykpP/fyuSRI4VKlF19w3H95KkvMQbEZ
	v4Zzb3x0KmVr2hYfmxW3aFpjdYCnCAg96uMnu1RM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a54843e7-a1cdcf28-6dff-46cf-830b-5b9ac623c8a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27ed8768cd1ab97fb3920d2554cc4f88ed1a38904b3da204624ce03871731a04
Date: Sun, 8 May 2022 20:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652040418
