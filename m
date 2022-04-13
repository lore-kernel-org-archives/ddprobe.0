Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E25D77B
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 01:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649813698;
	h=To:Subject:From:Message-Id:Date;
	bh=fQ0gWg6tt3lZxA+E5R/rFN9jSAJJmyFwkv2+yH6PpjI=;
	b=GL37tJA5YVG4Mkikj6ISLm5Bz5A12XxneWujlk8crTFDfIJqXaR8t8KD+gsJlYly
	UjVrxxNy8sX1o5VTWwyHuQ/grmSXyjkma0h1EBNyeFxrwqCetNoGOVQFjW+u9uyhw58
	e0CXOJ2PZQAgtI+dHsvh+fj+CTXpAZsJt57Lq1uc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649813698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fQ0gWg6tt3lZxA+E5R/rFN9jSAJJmyFwkv2+yH6PpjI=;
	b=OsBrYRSge2n/G00LZk0cJtog4AATxZNB2JMXFQxoJnDQ7HOwP9sUmKQWBrx5rAT0
	tXyk6fIWH3ldZWRC+C1PQTI3vI63E7syGIet3/eqBc24zRikt7xCQmY9TroHuK5QXrh
	kAmU8bl+AJ5CDTqlWjL8uwjJzhznGEDMjsGjvplA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180208f36f4-fa930584-1114-4ce0-9a59-75b3025f55ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efd0560a9d35c15d6b76e4cd299e7588b9b9a25659e076777d122a459b4ee816
Date: Wed, 13 Apr 2022 01:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649813698
