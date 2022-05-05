Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDC2B369
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 08:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651740958;
	h=To:Subject:From:Message-Id:Date;
	bh=hIK7ZZyLvgCY7rvV3OIx6gZ+UbzPG/VyAXe/XXrr764=;
	b=g/J9MftwMsoeHTCCtAsULrmQAC+jjj7fVqND1txPk4rdCDo/Dao3R+aTaOfaoqfW
	YfOioi/hDFyGsQ5/B4f6r5rLU2fVjJiBLQHVcmvxQsxQctxF9wvnG9IOrHPMqyey+/h
	DKWEVzjFe9uhkpOhLL18c5DZpATQM04cRzKFVO18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651740958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hIK7ZZyLvgCY7rvV3OIx6gZ+UbzPG/VyAXe/XXrr764=;
	b=UzJgRbn0JjAoYrUWK5noiyb/u271qdJbBJOeY3GCtkHV+CERpo8U9z6Cj7sFpDBJ
	Tav2+En+IRWBjSu8JC3mrhm3Q2k9OF9Kwwcwm/L6kgpRncbRS+lqtgZJ+oApjK7bnLY
	3CAZV/5vbihAcmzk8kMTpxx4dRqcAh4/39vtB17E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180936ede30-e82b17ab-0fcc-4fac-bd01-347351ab339c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 20e65759782bbe8adfeb90e4c4e78dbffe8370e3e4f4767f56c55d701c24dd7b
Date: Thu, 5 May 2022 08:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651740958
