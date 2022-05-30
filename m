Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AA728F9
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 10:42:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653907319;
	h=To:Subject:From:Message-Id:Date;
	bh=Z/gnc3w82fsN0cVDPwRAxWwYf40UbcK9GuoD4T4zRCE=;
	b=WsBxv27bJKKdvzKFVyJvUU4MC56A4H04mOFFnga/vPZItFDqgYVm2KM62QPTpzsY
	2mIIvH77ofyMc8m0AhCJuo8A1v+rlC2c/vGeLzp67sFrJJLSJqSJiYn5nqStaTB1EAe
	Ux+nSJ27ARO9ncd9TFI7OnNbwFp/6l4z+E6bd0/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653907319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z/gnc3w82fsN0cVDPwRAxWwYf40UbcK9GuoD4T4zRCE=;
	b=MPBJiHX+mYi9HVXvSWKalQBguEtc/Yas2KaSXfwVAQS2mfz88y1RAfJm/R+qBPt3
	U2ur1Ejca41EZGO3Me0cZNMe+ab4TeEmjah5gQO2zxVaa1kvqqrhZMKJy0JT0FdRsJ2
	eVf07kme4HIQvLpX4IPUTwN15DS3zl9EAYZa4KcE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181148eea03-8d6fa8f8-0361-478c-8aba-2d997e32cc0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d85681937d0da69b2804329174f097f46439626bdd8e6e098a348a08fe252c1
Date: Mon, 30 May 2022 10:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653907319
