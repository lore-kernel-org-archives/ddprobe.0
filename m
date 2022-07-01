Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C7557EB
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656706612;
	h=To:Subject:From:Message-Id:Date;
	bh=wB6ifS678bz2ekkRHa0s7PXvehqTLpjz9oI0u/7oy4U=;
	b=Qonn2DrX/LXoxXDS7MKnzBQX7K1Q4xOJaoNjgVLM6CrvAj1sn3JGTrGPj83DQsRF
	tShA9wVZdDrxBqt2/+FjEs2DTcWsvaEYbIPd0dTHDUrn7zsUJB12ZP14tJJ7c2kSuHZ
	pnW9jWKhHy8PiilVcJ1PTL0153UlZy8juE9iUyzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656706612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wB6ifS678bz2ekkRHa0s7PXvehqTLpjz9oI0u/7oy4U=;
	b=LoX4owlwvhAxsmWXB+2f4fk0nmUEVBj5T0CX9agmPneHd7Lbslx4dNYuJsgdSLGU
	zGpdP4mmDLJm49YbejtfWHCF4HVgyOW7Uv+HE8VF9bb+z2a7xasuLMMdF0etMUEFFFe
	s1iAjOE6zEiMSMBz+KvXAgv8mw9D9hqkFmXafC0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb68bc6c-1b47dc87-0b7e-4cc1-a32a-486c1f95dcdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5b0b477dc5f002ffbdff210302b62bb668eecf9884d2617d3431e825e374f7d
Date: Fri, 1 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656706612
