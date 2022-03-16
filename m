Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E24E7A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647430884;
	h=To:Subject:From:Message-Id:Date;
	bh=wrWvauZUJGbiCCFlHd1gYNvl0scd7xLVYBDsdKWjzKs=;
	b=UTjLx2q8ggetWchc3xkKmHXEf3+8CjdHi3QstXaSi1YfplPNiONxce22BmHMeZeN
	bNZUGeJ3UQHmbuQmJa3+nmr//xYhuRluLK6pt/xDPg+fOuBYfKa1P80MTx7mJVyf5ts
	wdImmg3RTrKb5sO6JTeGsl4hU33ZnJ7cMB++fsmQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647430884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wrWvauZUJGbiCCFlHd1gYNvl0scd7xLVYBDsdKWjzKs=;
	b=cE+9zGzxgGkSKE2WTYtZKnoa+Hg2+WNuQw20suvn9nsJlLMUcDC3d4lQTm6IJva/
	4RZTERKLj1rBCOxQ1u4sKobL0XXZ3aBCX1/jPHYF2CEKX676UujRxVbPwCVsYQRBJMw
	imCNnuYunILPbZCKDjsgtkVhvvbshqnrS6wkirxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92885dca-9b1ebda1-8fb9-41e8-98b9-ce5b3126fc29-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 257eb5ac07f25f638ba366a32d30dce2360b140122228ee104f5d9257e520333
Date: Wed, 16 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647430884
