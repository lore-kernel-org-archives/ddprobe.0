Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB027C7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 15:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646408785;
	h=To:Subject:From:Message-Id:Date;
	bh=KwM4tJde4WyrPcjdZajvNUpek4eICTVScX8JM6LgYfU=;
	b=hmTyyuUABg8FqjiatXrBkIVd5gyoc9E0Z3ALdCGh+CHAiDqFR+4JFMtyCIYk5/zO
	8rM1n8JHjMNQ0y2VebY9t+6uDO17UdliXTundB+Sh8fSd6/n/JA4tbrql2V/fA5IG7h
	hqUwObWB5fk3jXxgv8Lerhx+BXy3bp8UkXxxKtTo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646408785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KwM4tJde4WyrPcjdZajvNUpek4eICTVScX8JM6LgYfU=;
	b=i+/o76CjnnSZDVn/dqdQOQsll2xX2lI5sMga7I0wFoWAnoZDQK0TmA0vOmi4qtLZ
	YKbZzde+vJcWFI6ziRA2doSIFwN/snr8iGr3C8KqVQq1TVYBBAFhpImzoFhWFAoXAIr
	e8im1iniTXLqyIb/1jtVvvMwd16Bh9KYKQkPMWxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f559c5b57-5553f0db-58a5-44ee-aca2-a9a0bdcd22c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 248737d9d85b605694d0b9434836e629d9bd796b84e0c34b4462b44b47718076
Date: Fri, 4 Mar 2022 15:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646408784
