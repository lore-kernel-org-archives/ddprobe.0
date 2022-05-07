Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1E37E
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 15:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651936378;
	h=To:Subject:From:Message-Id:Date;
	bh=ElYsxNqXrNEQB3xxeGQi8Z3MS8RcmaZRjXTvyYjTDfA=;
	b=PwPgusQmfwkDAXvEzE8hdcsBQ3FWNTEAZix9M80Q8JWAEwCCtJ3HJPdrHl1/umOx
	YcK3namx12S2K4NRn5uB0dQMKkN4AYs4HRkvluWtTfS2NT/kYu4+opG01B+aBSWWd+3
	YRNNnCAod2WMpv2yhAAiV30Cr7GUlsG0qYiFDA/8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651936378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ElYsxNqXrNEQB3xxeGQi8Z3MS8RcmaZRjXTvyYjTDfA=;
	b=WsFzDeJxdZ7YouCm0YbrHsCNxmlY9VItOsx5fzZQvBViopDrjv3K1fGOR6TbYcbW
	BpPGHLpxTaGAKeKhztENfjJbP4YOhNJsCF7gRkfvUpporz3eAaCZDehjKavAvDYEVAT
	btdM96spMOdvAKTFgnVAYgghUwKafOD2YHisWVDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809f14bdf8-ce5d9dbe-1170-4fd7-93b4-d3720a6f52e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f838e608adcfa99c969d908f0c6c7a5286ab952314ca0b4e6b5ef5300273bd7f
Date: Sat, 7 May 2022 15:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651936378
