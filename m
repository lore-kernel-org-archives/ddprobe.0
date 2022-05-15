Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C94627
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 00:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652576219;
	h=To:Subject:From:Message-Id:Date;
	bh=ekdi3bKx6ch12lMO1vTk8OY6Y0e6xgUbDRN2iR0NWI8=;
	b=HDxzNY2EYyIyTp4G10ue2e1y7jvr0UHQU11OLCdfw9t8Xzhbx7UWj289y7bU6Jtq
	s8lDSw0BUVUhoJhMNIW+0qWpz1yIibn3H5nkd8kfXgh6tqcagcR94472wMDug5Ot2zj
	eoTRkuOBBFl1VV10vYAvzQL+GGnv3cRJ4b6hB5HA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652576219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ekdi3bKx6ch12lMO1vTk8OY6Y0e6xgUbDRN2iR0NWI8=;
	b=VnOPUew9APPlIfZ2FSV26XU6HNMgbe6Hbfc56voNhrV06oq9DqLtwWquCV5QjNEe
	cbqt2CEZu/lEHTW+/aBbZ44s6hh8zbyFxENxYaHZpAvwNW1X6MOFVkSJyivHjd4aFxV
	GrNxrLc86tDB/rc5LHhFFuJ/2qw+aD83LXrvL6P4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c537f0a4-517b802b-a9ce-4185-967b-6de36749fbf1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93ca8b9730bc6e3db4cdab1a10fd16e4084699391b2e992fead98d577c3574a9
Date: Sun, 15 May 2022 00:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652576219
