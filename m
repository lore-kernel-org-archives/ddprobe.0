Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390207E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648272178;
	h=To:Subject:From:Message-Id:Date;
	bh=Kf2DEPAKAjFk+5a+WTF0sQWDbnVNgvLDQGPjFE1XVoU=;
	b=l/0IsRsquYkctohLlHYnX0fZ0eSf7Qsr4FpRfjOrUS/DJViq3Mn4U9nYLZv/Abfc
	7H5zGGj/8Xr82kzWePpKPkaqY8j06D79X0LK2oKhbqtI0iZ5N9kL33LKzLsWoFk8wMq
	nswQOB0lvjquggjjBUgvKfwlwGbYydFP/ehoSKis=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648272178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Kf2DEPAKAjFk+5a+WTF0sQWDbnVNgvLDQGPjFE1XVoU=;
	b=VeUmxbfJxM8Z5JX8WUwuIMctkLgsTnW7PLj3qUbRQiDNL32eNOs25ZmzzS8sAQk8
	g+gBTRjKEcBRtsPyXCA9t5Qwc+1Y051r6FZNWjTDZz/frDWRJURMwWw51ZQ5bzu6us3
	W3UGY/ING3mUtVlqMR89LZqCUktp3agQ0kfsdJWk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc4ad7c85-520ed420-f624-4da1-9859-6ef3fa71a9b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fa83ad8639bf5deeb3f7bbbfe05dfcfcdc1b79ee6e941f271fc615736b9f32f
Date: Sat, 26 Mar 2022 05:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648272178
