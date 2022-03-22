Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682D67A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647913884;
	h=To:Subject:From:Message-Id:Date;
	bh=vrUIOxKjgbvBh2Vtlm94MPjJhElfNg7ozwbmJ6bRUAY=;
	b=BnnWMqfD5wD9HSFyOpkLT0RToma4BLufwws+uhiHd7qDbv1hUb1KbIegRxYclcGo
	tzqNCK7OLnbn4cx9i2VcR8zP1MOPySa0eprEaThqzRF/8ZuAoqDsCK/9xsb3AAYsrgw
	YBXUF9v7S/xKDBaVoyMj77e3OA+VYK4uMYXkG3bA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647913884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vrUIOxKjgbvBh2Vtlm94MPjJhElfNg7ozwbmJ6bRUAY=;
	b=g60/oslF0UAbxBEAquprdsuB9efnaPOm076BoOpkqBjoUchH6yVl5XED2A50Pfcj
	64nE3pwFQb57+4vngH4AubbZ4t7Djn0YZcKbrFX+N3GHh/kT3u4GU1Mx9fn3cSIobLo
	5X+/eX94NtanJ1jAYftu+j1vE+ui0654dsu/DPiU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf525c46-dc3231e1-17ac-41df-a1a6-1b2a29f4282d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ea1ba28c917f057bacbd8428efcfe916c5cb06d0d4366d053704fd02d6e4ad7
Date: Tue, 22 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647913884
