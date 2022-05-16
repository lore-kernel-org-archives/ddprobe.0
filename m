Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1240DA2A
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 02:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652667659;
	h=To:Subject:From:Message-Id:Date;
	bh=yGT5wMttDRY8HHletskqRbpQay6y02+HeQAP8/hI+kE=;
	b=PVZKgO2cEV1rJDjr9xEZ8INYt5bUBFiyhSma3IyDq7+k7kLqBehUquI9+tx0XFR/
	y8H96LheSxebOSQKp/oflvZP8ODoBiTMaD95gwklrmX5S4zqpquOdzfdN63Hf0zUs9F
	174Mr3l9dufR856ezcvLyxQ1tnHo6cL0NB/Gx5f8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652667659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yGT5wMttDRY8HHletskqRbpQay6y02+HeQAP8/hI+kE=;
	b=eIRkHSyo3lthFYvwHb08YAs7XQal6RgBShLUqFZFf9NAtwSSHmzLwy52habGUEtG
	oaEYTXfj9D1MbD2YbJWr6MxVBMjQSi6yonIXxWUT9kiWs+toCZ8ctNbrZxeUFldESVF
	UlQj+XIA0dwIVmoBJs8GISPfDsNqdwJrRhGLR7s4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180caab3412-d3c4b581-a09b-4077-a5dc-4c297c961278-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2945bca656c166bf6298a9f00ca27a7f1bbbc54e5774a6495a47ad8ce6bdd77c
Date: Mon, 16 May 2022 02:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652667659
