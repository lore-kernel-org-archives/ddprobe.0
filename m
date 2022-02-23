Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83D057A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 22:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645655484;
	h=To:Subject:From:Message-Id:Date;
	bh=RmHvqOtJStYUPVEQI0nbLJaN1sbXZC8q9sGGbOHaqMc=;
	b=MEdIMPU+LnPzPDD5SrSMTeovZFqRuSU3bGth+xKV16mNMrTtJmUZPPktTfGNeyuS
	iBrNdIyo5OOpVho1oeQEWqMjs0FSvyzEH8ADDqjBuXSObjqcGfVYLoGKreHhJG2bKWO
	EBGKKuekZIsde8kUvlsMnPnwNrkznLinFQ5qk+us=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645655484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RmHvqOtJStYUPVEQI0nbLJaN1sbXZC8q9sGGbOHaqMc=;
	b=kgWF6f79CwIent05S5NrVBN0VMc0dwWPHasLg55PGfEK2AuoTuNKclN6MbK1jeFi
	/V5jq4sKQO/52sUkBk0BzSamdsN/eOHmnDWHReRlcSRVGIUtVzgPRNfmB1JehsMu7V2
	zDYDAZBvhyxS49hxSuKn4YqixcwAmIMJFtE6kB7o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f28b5e986-24a0cfdb-23a3-4220-b4aa-a9918831b58e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5374f5bcec3cec8677ab7cc8e48eae6379d1d9bc93f45fe9fb89b6b3c76aadee
Date: Wed, 23 Feb 2022 22:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645655484
