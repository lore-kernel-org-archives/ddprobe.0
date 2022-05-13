Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A07920F3
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 05:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652418839;
	h=To:Subject:From:Message-Id:Date;
	bh=pciiKh+aKFE7hpeZIwbo7fPKb1oZARKJZrAjsmeaWxA=;
	b=hcaY4gBBgsVZm9k8Yb69OlYzAge51QnIyfWAml7qQYkm/+KVEPzBK9VRKzehX0tp
	BnsMJ7bmTLxNKW8xcHuUyPSuBQh4Q32Mr8uaG3Ao4jAQ1j+WPbkEbE4ZMc+jIJ+Utfu
	JPwOuAPIA2+ndb5vgkKKAkU3vXpDdFuTIyqwhsgQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652418839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pciiKh+aKFE7hpeZIwbo7fPKb1oZARKJZrAjsmeaWxA=;
	b=LCYSONsasu6rZ8pNrtvEi/QlCNEKs0jJ7s3Av/9e9UKWQKqmeF1NmNDN1Y7u56rv
	RKDB1SgnvB/+weGPPqPDGa2c97Dppz0hKIuV8Kr+/s0f9APYAesHd6Zut7H/I/lLrBF
	V9Zk/0lpJDRHNYjNiKdQxxJKzQKBq3eh/YQxD7TQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bbd682e9-b36b586c-5073-4c93-8a9d-cf6cb514d618-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 61d5b294808a79ecfec1691301581da7a0972049a7a1ae5f79027f2119543dc6
Date: Fri, 13 May 2022 05:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652418839
