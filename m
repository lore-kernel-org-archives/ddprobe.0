Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EAB12F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645149684;
	h=To:Subject:From:Message-Id:Date;
	bh=42wFmFvMJZrXOjCuCgUXrOHqNOnttRlcjE4gAo+Pc2o=;
	b=DI/hb//I8z961Fco3kFwvCI/CFkql941o67oTzvjhphLHnu0UaC5bNd2bqF/AJ86
	c17V+t/7OipmjLOu/2nUWs0iOxgCWsaLDRPZ0K+R+Mw1LfCOg4N4U1Fi3g0JRnpJ17P
	2sucP375w1jRwCDzk443Y6v0Gr7Nv/0jf6/o+cpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645149684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=42wFmFvMJZrXOjCuCgUXrOHqNOnttRlcjE4gAo+Pc2o=;
	b=Exew2lGpeG2rPc0c3Vzi0Q8nv/YLBgT/XLgLQsEbkSBcNYr9hn+bIOIv5kjmSosy
	CRpax17vO4bhM2cHJec0nJGUwQ2Unuva6dP+blrIuJOs7XAeeGPc7yJlX2MJsMSgKHH
	KskwEBHJdGN88x6d38CgakrY3k2FWgFQuy4u9C2g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a900457-89471990-7555-4e5c-bf77-fe9b7e51e040-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3c3e34dbeecae66ca5d6fb83b794ef9c8e8201ebb8bc12dfa74d8bf5a48b48a
Date: Fri, 18 Feb 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645149684
