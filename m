Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D861851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 09:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655198579;
	h=To:Subject:From:Message-Id:Date;
	bh=b0SXK9q9HDfCIXKMnyf0kA8DMSswY0j02YbzpTitnLQ=;
	b=O5j0dCWiPzXr9u24+RZwSnJ/HO9NCkI89jBw1XvWnHf9OVVjo1dwVpy4HnNmOkSj
	wJ0zN7fwph1UkEHN/+RpWAiYHFqKh20Plxo/plqI9DkU5gUd5hAC6t4R5Xy7+xLKR1I
	+EloTOhdQWSoKLXtwyE97Dzv3+N108kJ0jzarvcM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655198579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b0SXK9q9HDfCIXKMnyf0kA8DMSswY0j02YbzpTitnLQ=;
	b=jy2OVWJBZYme2x8B9ERP/SfNo2UP0VXna9lmM0bGzN7nYw+8V0AKlqLx+wYSDTI9
	/86F8DaZ4x7YVVLGZ5mGkbIegiIpR+LETOlp3tJ3L/dl0gi6zrpszOOGjMCrfRxMT6h
	YU+5T231dpuMSsQPWt+rjIKcLQ0RkLXdYyjSPG7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816185fa13-24f5cc17-6461-46da-a0a9-679b5110107e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a2c99a0a032ea1512b57a6c7632ab904d27e172b46f7dccb9da6d95f3fddde6
Date: Tue, 14 Jun 2022 09:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655198579
