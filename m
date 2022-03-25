Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C5028E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 20:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648240378;
	h=To:Subject:From:Message-Id:Date;
	bh=T7imM2nlChRjYKleL0IJ0uU9YEt012ad2KD9KGuAcUE=;
	b=dN4VIO1HeRZ38Adr2XGB4bGbW1KLBHh/mKcRaUZcfsHfSZEZ8nyvlyQZpNToDG8J
	h2obZ1wlk/+iUP1iGjFfDZ7EgzFNzoAA/d8TbUcoQWSAzoaTfI9Y49HCsbrgIW8gKNp
	mTjnpUw67vec6yaCM8k/qSd2tTw2de84eWD4fAg4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648240378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T7imM2nlChRjYKleL0IJ0uU9YEt012ad2KD9KGuAcUE=;
	b=blUbiWV//90UD8uDXGRFrl50pLzWUkSHFqA2tFXCoDw1Yb3eMzFrQ3lASpIsD8lO
	1X+IKLcWpiyPR71I6VkLViHAt2s/2Px0uj5S6YuBsBf6gxa4/83m8yXkzVFiOXZYOcu
	m7hdYv+ZZ+MByKi+Np03cSGmU96CQEWHNoEY7PbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc2c841cb-3f40b6d6-f9ec-4a92-9a40-7a3efa0c75e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f11afdbef44b2f5a90e6314efa819bb22c43617dbce1dfadf1bf0dbbcc7d758a
Date: Fri, 25 Mar 2022 20:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648240378
