Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CEA1865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 11:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652096578;
	h=To:Subject:From:Message-Id:Date;
	bh=s8mbs2KFo7C5rPTAeq07pIEmB3yTD4ZTvJcoKzv66xo=;
	b=JNL+9GaXl5ZyOP8CVr6Yktl5e638Vqr6WQzfbu8BHV0XhcS6qI4K7bXuvZrrWk7H
	P47Y231UKn0GEw86v3CUSC4LFNtE4clgDrbJiGK6jttMNcpBnbxQD0QzT4nly+zUMOf
	TkbuTeo5IIfEf+vtGQvuXpj/tFRNRH6vK7K9Ms2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652096578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s8mbs2KFo7C5rPTAeq07pIEmB3yTD4ZTvJcoKzv66xo=;
	b=iNZm18nx9b28UYgw2Q1OjOZuLQ5Ng80jepG/fFQvL1NaZHBZZpbteAoVF7CWxEdN
	oqGzIgatOmEhdFu9Q4DsdP0qoIgdItAs5JkFslmqu7bm4ZXHxz2E3guBsfw9FGMx2Y1
	E+rzYrYlr/cX+GbyTibp6j3FTsGwPculKFBUUoVc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8a132a7-6a2c9b07-2903-4bb9-b66e-2e9c42df8a14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78d60400bdc6b818a29d56dfaec1c758eef6c21d385b8ae3c998a2c0492b1241
Date: Mon, 9 May 2022 11:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652096578
