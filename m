Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F573FE0
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 23:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652312399;
	h=To:Subject:From:Message-Id:Date;
	bh=+lAL/9SMLurMXMU4oeBdQHwJrjNYv2FnVS+/HrKAhBU=;
	b=mg+9nYYlgdF+Unf/WAVp3wBI7shV9OhSLXTzpABJ7ZNRriTWtO2RD11owPI4UxeS
	7HoaBUvnTBKrd6aMwlE+Psezm9xRZ3hRd+a6tHDeXbLZDTX3dMNSxBhxBIgjz5d+yY5
	bGY8buiX3njt0LFp9FYbcd655NkDE9WpDFBojUiA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652312399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+lAL/9SMLurMXMU4oeBdQHwJrjNYv2FnVS+/HrKAhBU=;
	b=ZdbzoQYtF2ZvEkDsBjVmsHWA+VHifH9spoMfOGsSraWfs9A+7/yA9ojZYl9HqNPs
	RdN2LJvKU1r07IFBRHGh48ylvulecl0RfXe1zvC2VAAw3ZnSOHb4YALRy6fVEwRMSLu
	EIaxq7oymw2im3rAbE9nHfqYbDtMIrPr/hLUt9NU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b57e5dc5-8418de37-2005-42be-966d-c7997a8bc65d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3df3bbfc3eecec03845ebf18e461b461a6c2117479dbed40b3cee4c6b003a6d0
Date: Wed, 11 May 2022 23:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652312399
