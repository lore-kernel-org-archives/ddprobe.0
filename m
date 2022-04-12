Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F347B
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 03:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649732698;
	h=To:Subject:From:Message-Id:Date;
	bh=M1ESX1DjhxiO/qGilyrVd7bmPx/9xEQV2JQwjU2735o=;
	b=fFOCsvdHgDaObeOwjP1l/WSg/evRvtY58cYIDQu1Z8ZiDSkCQ50ibXItkYBlWTrP
	73uLq1yH9ZA6YUCxxIy3RDxT9w7MOWWY9T+87o4UmKO/hPp+RAWuySZJLfUnT8IwwRJ
	1LeKBvJMET1VrELp3l6FMm/1w0pZnJkh5ApA+I4Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649732698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M1ESX1DjhxiO/qGilyrVd7bmPx/9xEQV2JQwjU2735o=;
	b=kkfy+Belt0FbAKAPu6Hx3A+xNBOF5DvYgoVHZM6ByYd/snwN7ByN0XaZCaphTnTZ
	InZ3XftCnSRdFZIgpXt2SXtVPk/mzU2YH0ZqkKwEBbhGI/5Jw6Z5zYodNqIJzuhC/TK
	/Zpuncd829kYOqVOpYXlZg29t/S0p5nPOuSEoS1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801bbb40a0-8fa03ade-b7a2-4190-bfbf-ab5a432b83ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1abf76ba99dcfa20920fd0aa1d1468d75ae06650517cca01d523f6df8fd88c8
Date: Tue, 12 Apr 2022 03:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649732698
