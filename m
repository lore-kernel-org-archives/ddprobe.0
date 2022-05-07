Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07998136F
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 22:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651960858;
	h=To:Subject:From:Message-Id:Date;
	bh=PaDspyHJg5OFaPjkWTKBViUr2cUFT0Sf5q+BS9FEO90=;
	b=UGFS/DXN5lHzYTemj/0HLcsymA4lXS5yKTJdbKEEtoTe7vFWc7HiP2idp6GZsObc
	HJ1MYInL4zXy0bZKhat2WcbB52GKDwh51sUom9Okbwbi9mNodLXxr0YpEEMn7sbTFyp
	Yc971RWWk1a1PHq/jWYHtG1CbsO4CRpPLyT99t/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651960858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PaDspyHJg5OFaPjkWTKBViUr2cUFT0Sf5q+BS9FEO90=;
	b=IvduUS8v+A/rN/jY4uqU0tzzy+wTy5koXQa/NBOc3x3xRYJsqVeovL002jwhHR7F
	cMWG5lvgUhW7Bjvi7LaMgR5CgtmSeX2s/ZVYeqOdszqCdruzFWzTr0e67pVVB9exjBC
	w/AGYTWMaJeR8FEzOnNYZ9ca5HJwP+KwgmHBhfYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a08a46e1-94a01820-0c04-4c5d-b24c-24fa08ba1e1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68fdc351a30fb2dac2d53929f0e236e5f4a0894f54db87e10161764995be9d7b
Date: Sat, 7 May 2022 22:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651960858
