Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7D496444
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647645384;
	h=To:Subject:From:Message-Id:Date;
	bh=SYar7/+TRn7biTWMXm8RvE0P3r7cpROwf0RZl10ZE5A=;
	b=dOdJzyzx76644Wmtf/SbcdxsqhhrY5Glcl/61RQba330gxWzFnnWa+ZkaHeRwIy+
	E8MPqSiLb2Miya3jKYBxvuCi52pk2nR0xxViAozkbtN9xBAojNkL4YhZhe/qJXgQ/xU
	R+LoD+mG/BRlM60HbOXuKeTqsuoudzn7SysW62jw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647645384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SYar7/+TRn7biTWMXm8RvE0P3r7cpROwf0RZl10ZE5A=;
	b=VxLev4fExdkw5t2BQ5EN8N/+owe9jdyvzL/lSm5/+ifuobC8aUrBCRmoZvUgS2eT
	BRuXt1YfhiVfPyKFMZx4e97UKKVA88GcfLH9AbSNbn8UjIyX5wlE4NtuQ7a+e57cBAd
	Ucesp4mhvXk0TnB89nqiAaz1sBh7eKQUlVdAGagg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9f51603e-cd763658-0c69-42b9-b261-a37cf4f2831c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ffc954bded1b65542596d0d5efd058499e12e139a6462616e5e5dd7ed6c6265
Date: Fri, 18 Mar 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647645384
