Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E60320A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 23:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660345852;
	h=To:Subject:From:Message-Id:Date;
	bh=rILMLFLiU4rdv47f5yOMcDEjkMiR8BkudKpOcT3W/0A=;
	b=XXNjoto67waLVohb9sVnk6SvuFE+4PKtGgjxZsdmOCBTUSjjx9VJY4/9r5k86c6Z
	SJP9q1zm63P1cCOB7ACGlpUOug6He1a10banDitDoawTSOoXKfHUpK/jOQhEZoXFrT1
	jISxcsBJNB179eWE8NhzU30Lnb5V6GJQfjEY0GI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660345852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rILMLFLiU4rdv47f5yOMcDEjkMiR8BkudKpOcT3W/0A=;
	b=Rcd4AdX0imwpUW8eAq3za4z7jsG2xQF819cKkli8osN5wB3Q8vtWpLq9fiL25IOn
	NOeiY7xVij8rvWKxzrz+kE76szEsNCyEl1QqUnJC7l/YSEkZNU5n9Fcol7bQ34oCSCm
	Je3tdv5UnwouLP7g5kejwyCJNGSjv90iyg2mwUUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182945322a0-d49ba860-9d5d-4de4-8874-811ef0b2bac7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54a7592e161a96f38ea116e885f137d4482e477d999b7f1e08b3ba33cac2a530
Date: Fri, 12 Aug 2022 23:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660345852
