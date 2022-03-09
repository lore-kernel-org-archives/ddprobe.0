Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3FF5107
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 19:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646854885;
	h=To:Subject:From:Message-Id:Date;
	bh=45yoam/A+omc+tZKPCC5bVWAHkrB+JjbCtoHCDBridM=;
	b=hbOAKFOmEZQCkKJSjeXVFUGQCCr+mBSre51HreA6qQS+inWqXuR6j6Yqsc6MsUH5
	et9koJu0GTBeCgxIUxWZmUGjqLrqZllD5nY1sGhU8QAYq17AxcDIi6HBxsKTvM2JnGR
	nyT0K99G/moeD0nsq43yX4AqxAPqI8gInEOyBlyQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646854885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=45yoam/A+omc+tZKPCC5bVWAHkrB+JjbCtoHCDBridM=;
	b=Ka4eSCpUz9+TAQIEbgYsYCEiKJXsDlGFRj7znKUQhTqOVrZvYNL2vaH5y404lioQ
	o/ea4/96W+SfR4fdeoPgvJoevoZsOYjN0pXMEA7O8O7bcOJ1gu0aQ0bMshpy7s3F45C
	cD03DSjAYx6/lCt6R6MtwiiRG7Cp1F68XfnGyrmg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f70334e1b-28c257b3-0fc9-46ea-85d0-941b2cc1470b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f062e2179fce117164408de3d7a0902ff26c5e6f4de4f4fe199a3ac0e908c320
Date: Wed, 9 Mar 2022 19:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646854884
