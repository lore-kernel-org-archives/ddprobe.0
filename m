Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B11EBF
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 06:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648793818;
	h=To:Subject:From:Message-Id:Date;
	bh=EIH6XzXO9tAo3g4lELpOPAdx/tEfyYqSm46BO7nJXOw=;
	b=CjKC/Kjjj+q2lopreVz/7EoEGts0tmpcEdwnIp2VMMgCWf5FwPbhfz7YymwewvuZ
	+t0MC3XwNttwrNXpHpZERQ1T8GEwa4J0kynMG5HdtM17hz5P+5m0McvMHuMeM8kIe9I
	fdYtvVM+vn/5jcwyox4prLKFu6JSVyf+zBIy7wrM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648793818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EIH6XzXO9tAo3g4lELpOPAdx/tEfyYqSm46BO7nJXOw=;
	b=c7NVMBTrplrNSe7k2KR9Q8ftkr61Tseh1ljSf1xaG+5cOMA5yoIwP30VlQSWh0vz
	QH9Fo7w5+WJ3v6VWskfzGEXafcwUC5BITijwF1Cc0xFwyzbu8twv0OnPBmSxhFg4Zj5
	sNgaDwBaBntPmHagKJnRldPXLnr6pn0jV2Eq2NMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe3c51482-cd9d7369-4bce-47ad-8f22-379d912f481f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd4e7c276af98ba98487714503a2928286a3e0922e21462b8c957539626f78ee
Date: Fri, 1 Apr 2022 06:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648793818
