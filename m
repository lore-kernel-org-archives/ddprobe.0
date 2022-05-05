Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255852568
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 16:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651767418;
	h=To:Subject:From:Message-Id:Date;
	bh=NZYhxR72ajzwMv+kw6WtVUnApLQaLSEFa54CBLEX0Ys=;
	b=UtAmrQg+1D0zbTVARArY7UkqKCb43ExS8zdrA7SkMTGBhRmv5bcvQPORDQhKNX1q
	ZmFpvcmwyVpmC+HrVCzawxg0ZoQYIO32VO+p9ABoKd6OYckEEro6+vkQYAh3RuYgQS8
	afOTwGzfGpK++XpPj2IsAUABJZbfphK9DAflfWzM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651767418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NZYhxR72ajzwMv+kw6WtVUnApLQaLSEFa54CBLEX0Ys=;
	b=da96RUF4ZYgNX9ZNly7NAnVpdPv9tVZn+88AeiOBXyl9+yb7Rmdhut38ko7+lqGi
	rHu9IIUw3tKRdqGLn1DAM6n6eBTwFAaUF+5WrWBDc2urrKq3/r34s+zEheExnSTC3oK
	wOOeQWHuJH0IAa09oeVusbRJOSqgYsLfiztS4GJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018095029da7-49bb0af1-4fc0-4029-93c0-e7f8fb818afe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7912783f68663781bce679da323a11957a2785081f1354621b4ecce1acf2ee69
Date: Thu, 5 May 2022 16:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651767418
