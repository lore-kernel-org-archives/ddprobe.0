Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9BF1385
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 11:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651230658;
	h=To:Subject:From:Message-Id:Date;
	bh=3li5UBCWgMnRyiB9wg8vT+YrKtEDzKM2Ohg2j1jS2x8=;
	b=fIt5hbZasoATHzWF12ox8lLrZPuDYLi09UfU86l1i4wEbryI+eKEeL3bfmg8C0by
	FAu+4ZCp6KKTsFnT1p/DUfSePWTA5yZ/yfstUdOGRySx94dLZKZ4VTf2tUUPb6Av/yA
	Aqd6MrOFg4MNuLsYH87MbXq+lk81dwMXSl2L0+0s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651230658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3li5UBCWgMnRyiB9wg8vT+YrKtEDzKM2Ohg2j1jS2x8=;
	b=RwlwrQ47yGliCu1ISpB3Rzq9KAF9yzfLzQv9ArK06ioUVvkqyjUhASiXdv5dnKsr
	7NB65go9UvGZgxJgQcb5OR/PwpEcPTflQvavdr8gfdw4jdxN3x5/+IybQqi4MvfdMyO
	em5IcEyFMXl+woXn8q+XlfQzl4js0DyMnMHGshHM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075044ee8-2691a0cc-8a91-4065-bee7-4d071b763b0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b146f452cbeee7a9bb9854ea3dcfaf7ac866151edda71d271d2605116a9d8ed
Date: Fri, 29 Apr 2022 11:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651230658
