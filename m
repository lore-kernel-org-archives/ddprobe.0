Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147912CA5
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 20:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656880612;
	h=To:Subject:From:Message-Id:Date;
	bh=TrCxxkSkySoX2FAMUUP4V7kc8kwaeeMEmwOkqNU2mr4=;
	b=Lb3cFK9LyweipxPsOKka9rUJS/1S1/xyCLl1G5saIG67ES7xbtbygoX8YqZNesPr
	b+a8B8RINaIEde8VixI86hzqo+GTqbG6kg3eQh4bDXmzfxBIpGfSzvVssSWXMPAAWrd
	7+QPY4knLeugKj62AuDxRG16d7XE+mli7j4cfUFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656880612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TrCxxkSkySoX2FAMUUP4V7kc8kwaeeMEmwOkqNU2mr4=;
	b=B5rc8aJd3gLOA7zKV4gT1jn7sbo+2zd6vOQQC5PngBpLBwU2iD9lpEZW9WXK/eMh
	z4nm5uNLTEIUTTHynZTmjIE3Y9MTkvIpluYYFpHKTkuPgGmQVRfBy3zVIA4Ixyevsk/
	nFg8kcYglSBGQCzIaVmeHngNks1Bl3YLiW+6p0js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c5c7c3d0-5ae02eae-7d27-47ad-8b27-d46002ef6f3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 434e8e542bcd81851c5577a4e6ea661c867ee0c3d343c1774bd582bce00a486f
Date: Sun, 3 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656880612
