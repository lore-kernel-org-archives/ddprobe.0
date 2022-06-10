Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271D4362
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 04:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654835819;
	h=To:Subject:From:Message-Id:Date;
	bh=q7wewm/ADQ2FDzZCDh4Q5BWMM30dqsvbdyHKBXGJVfE=;
	b=iOA8oDtKoiu9g+KykQXV2DgVPLkoyjFLrY8djLEkhdsaYky8p++x88JqaRBQpROX
	cd4as2Ef3hzxGAbXMXrNek0CAGt7UbM87qznmoifV//e/72p4ZP1gh48WeYuthoWP1w
	icZW6vC0Yp/YVb+Ywcx1MmsRXsHRe9qr40d6UsJM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654835819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q7wewm/ADQ2FDzZCDh4Q5BWMM30dqsvbdyHKBXGJVfE=;
	b=ihmjZX8FYBL+1yeBc7XTG/HTl7INYFg4e560HAP/PloJKT1FcR0n7afcl8ZQT7pq
	EhA+2nesNySugbrPBhOctNzS6+y+CRe7JmjMBnNtsi2QWzjdMZfLsWaEbLC86e6CyLw
	aEpzAjXYR08ik3XGhZg6ssJxQeI2m4NojPGCEvRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814be6b33a-e04dd92b-58a6-4bd7-8fc0-afc2a4e5e11a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 687ce399a266ead054577c393538fbbb208482b4227d50b847162be1d7066069
Date: Fri, 10 Jun 2022 04:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654835819
