Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7117D15A9
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 02:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651457758;
	h=To:Subject:From:Message-Id:Date;
	bh=3OswqUaZ5tRN6TREZFcqpUsZh/zLQx/G/jI1rfl9a48=;
	b=gwR6NXnNSWt+8S4Gcj7MRnCaZ+VxV4nL/2o4p23YJobT9hU8ZapNKkXoEqLFO600
	JPlr4roy2ndpSZwLjwL3Eofi0lJxLgsQIuEMy66OxFy/5/gTqBdNAWU+uv6MlJfIMeV
	M1M43ZKhLZ/ZolBRh4ZObUiC47+EcN48V10K5DRY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651457758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3OswqUaZ5tRN6TREZFcqpUsZh/zLQx/G/jI1rfl9a48=;
	b=aG2uYhclSV+XkUEvbJrf7kIebXOYR7dgoEM4GDdJ8SDu3RJBnU3PYAphqa91gAeA
	QsC9oBTK1apU9D6tceZXAeFusDMiIbJJkCCjEawIi9cKNdiPCXq90V6aEK+NqNx/Nye
	/1njMSj83a8y96lv7+e4jkz5bqbHfSsZ7LMMMl78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180828d9495-f8dba7e9-8bfd-450f-9fd6-8ca5774be6df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b244aa6b6caf470b16e32081aeb22cdecf2bfe6fe215d628cfda35921fcd9fe0
Date: Mon, 2 May 2022 02:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651457758
