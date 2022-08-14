Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51119257C
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 19:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660503652;
	h=To:Subject:From:Message-Id:Date;
	bh=6qzuXL40zuh30o1TwgbDAkkQyRIx90dnBIIO2hdDRbs=;
	b=PCXIjEpAB/LqABFe3WLvHJfhbY8ZbZSfE4SOkuywT9Or7UHf/MPcZfkYH2Vrgzul
	WUPwlAvG0ZTFy66huLhwobVLvGF2xlERy0WK+ge3ES3p8YekdS8CR+4wD4nR4Li81vo
	qZAkeUWQLjjhy+3B+22ebChsdoMZQsmyWVrZujl8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660503652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6qzuXL40zuh30o1TwgbDAkkQyRIx90dnBIIO2hdDRbs=;
	b=NE+s1oiv3A+Xh26xwfow55ExdwjE1vJmKw5wdZpfBFB3Jp1W3CVn4/575K2w5wkT
	ushh7MUOerNxqwGEa/5FEhdA8vat1HqhSolj81bWSoxO2+nUYJ3Dvz1/+/6n6rs6Vpx
	tJ/ssUQCVrdAtX1nAxDHbkhL3AgSPh7I2kZ8QNrk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829dbaf8f0-85967970-bc29-4f54-9556-4072b7a44764-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d7bed1ba8485623d3e345d32af9489cd82acae6347aab435f5a11ad8d46a75b
Date: Sun, 14 Aug 2022 19:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660503652
