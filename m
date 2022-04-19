Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F68ED8
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 11:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650368938;
	h=To:Subject:From:Message-Id:Date;
	bh=QhLj5aME556X1io3SM7SHViXyHxM+/PSCGBRXQ3nYiw=;
	b=U3nHsGMLxnRPjfWbKDRdkRbdDVn40ZdAqkzw5xEEi9Irhx/Dfx8h94jEMn5rncjB
	27J4eZgM1bfcpjF4sur6bGJFJp73Rwbp2uFhvmbzOSfrHMfJiRw/GwpIlRRVXUGXgRx
	yKVdWyuGmCZ32ZwfF5QxlmHTfuBBf9H3BYWd2384=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650368938;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QhLj5aME556X1io3SM7SHViXyHxM+/PSCGBRXQ3nYiw=;
	b=N4M9t1ifN+6OnqPrn1fEh5TXtldEF/+acvoNLurQp9wboq3rtZ40MM3zZ+XGvt/m
	0yQTl0YRQ7zS7BZ8PyJp4annTktCDZhJ2DfcFz6l4e9OOt5FFOk2HCRMUPgWz6jJVrZ
	COFEo+5SfHCUzQNpKHTMqURiW8QPSZ/rgbpBFv2E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018041a7811a-5c7d67bc-6eb4-4f04-9bdc-3103cb24cccd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98b1480b02d3b6be075075f4538aea42e702d93fd442defc9af89b60dbb1554f
Date: Tue, 19 Apr 2022 11:48:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650368938
