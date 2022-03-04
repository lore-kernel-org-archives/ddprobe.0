Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DFBA4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 12:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646396485;
	h=To:Subject:From:Message-Id:Date;
	bh=nn8pouuEHpvzNF8iEMo3TTDPowxYpHIMdL3B1CBWKWc=;
	b=Vz7kvwMj/7UpHzCP05pBOtodato7RgppsSnDO/sbUKILjhMT5ofbh7km+IfFz9mu
	yujk8FD9O5tNbkQxjBV5+qS+mxktmQ9Lj3O7YAIO/bFKuk8vWT8URAhVX9oikeMClkz
	95tZjv5Yv97r4pnPIEPwXslv62mNFAh/0KScPN3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646396485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nn8pouuEHpvzNF8iEMo3TTDPowxYpHIMdL3B1CBWKWc=;
	b=fyZnDLLHjmtv6+web9i845M7bMkvjbnk/kNwi34Rbfyhmd4Yk7OhMujnCXBpwT5e
	JBe3Cg9AH3ldH7AQbRJ0Wruqg3SHzd7gPjwlXDrFjIBOyViV4LSpvOa4brbzrJpz/NS
	fdci1jOubgdl/WSqH8V4naC89CWwbO11Nas/OtaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f54e0acd1-459e1b87-84dc-4bfc-9018-71a6ed5ffe36-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd4aa82cb11216955aa42a560bd3b4a3c5619f5a721f309d6a9b66bd3254c3c4
Date: Fri, 4 Mar 2022 12:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646396484
