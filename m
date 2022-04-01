Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9502EA55
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 02:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648780138;
	h=To:Subject:From:Message-Id:Date;
	bh=bsbeBAMRqW3Z+4JYO8NYNNb+pFBZHvQ9FVr+Lkepyhg=;
	b=ZipvcA1rHQeHHvwo5nIXXjneoaLIq3inAWplWpG2VVg5BJtgnBxd+B+MHiCultxU
	TIz/Oo8KtHVn1+hP/I22HFjxQDc+wFQWhUAlP8KlRxYN59es1BTKC2SVO8t3LhzO5wW
	/3jzTQYYuSED/r9/Uf2Eq3HY+QuVv5wNFPrmIMeQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648780138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bsbeBAMRqW3Z+4JYO8NYNNb+pFBZHvQ9FVr+Lkepyhg=;
	b=az++X3+PXNrG43aR12LU6YRrHN9Qqs6OTNKkdSY03M+Rs7Yf+qXTC1xElhP/sVl0
	68ngxILQwE+QQwMRzsd+uz/SbPNadDXd+2JQr9OX4Ra69xy9gZphWrIAzcdc3ccnXDu
	vnfpGWajcnUOcg4l1pTzCI2gsGlCYKeYpY8MycvE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe2f456e9-42c9ec0b-c73d-4a03-b5e5-b12940693328-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8013d6069cfda9c5de6a95b3835afee88c9e2732cbc59f9513b4dab45dae72a5
Date: Fri, 1 Apr 2022 02:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648780138
