Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674312F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646326884;
	h=To:Subject:From:Message-Id:Date;
	bh=cBRSNUp8lN44HT4p6YWqQ1Zfbt+ERcyqStAP4233y0s=;
	b=DSSzptbOtncS+qhydVpaEE3Vwdhhip038I8ATvVqMSUbet6v6MyPVFApFg1tk/t9
	58/8uWVYalDJzY2hfHwafLTd2Yfxg1TiOTGzs3TsVrVhzzjK5hHXy4BeFjMoupvkFN7
	bTQhfVAzgNL2UESy8hYRmhXkNYqPHdBp00nG265k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646326884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cBRSNUp8lN44HT4p6YWqQ1Zfbt+ERcyqStAP4233y0s=;
	b=AtJHDerZ50Uq1rms8IbsltqhOGoJwrF7IcoPy3GZJnsqoeIs9lKMv3mhRJdn6tvz
	+CXGxZuyptPc+1FK2RfFhe409OChRiGoEJXpxH2/oHgyqTGGL20X9WVmt9uwgrUsAXT
	lbKAR6y3wA4aJXO1C+c5sGpeQFo5BAfC4vhg1pz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50baa97c-dcc97b3f-2bc1-4e25-8451-b2fc9d8a702b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05254d22c483e49da53e9efa9c71c09a03228c6b3c8cd9a365c45bd86d1041db
Date: Thu, 3 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646326884
