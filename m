Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD506AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 21:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655415779;
	h=To:Subject:From:Message-Id:Date;
	bh=qSw8xgbweB6CJ+PIUOhPsVaWw0pfwpIvZdU0nF3eHwg=;
	b=aL3StmjmMuKozSgWNezLWk/OKN7r5DbMvuYKq7vx7FCwZsJISWW498kO9On1q9O6
	DhrWFsil4MzaULB2thfD1XVe3FS5LEQS1fune0YUMlGy8GXZcf6cjtCj7D/YcrGFaAT
	l3UTTJu+s4eS3jpPJnWj7ULDxMsmOKrXifUbzCHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655415779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qSw8xgbweB6CJ+PIUOhPsVaWw0pfwpIvZdU0nF3eHwg=;
	b=d6EcTm8gac8QffiagGPvnOerSj4kC0N8cKzuGRiHSGsKmUgkX+2kEbGYSB/4r3VT
	LIBF2hJ3UsHApk/VaQZfGdwz+GVJSLHC9MKkZ6UazWMhw1Qsc7pJ/qxeX2+bnkFliyB
	zJUhGivrfhPiluLSxEXmRYcKhI2puUEsrg8a66Ws=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816e782fbf-aac8dc34-741f-4971-898e-7ee85490e3c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0cb557ab78efc47514e4597c162e42001f1ddf3a2ec23d92bada7a9a7a92176b
Date: Thu, 16 Jun 2022 21:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655415779
