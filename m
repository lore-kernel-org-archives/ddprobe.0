Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DA5E802
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647927084;
	h=To:Subject:From:Message-Id:Date;
	bh=RcUgAXWUCvj5ycbwk/TzrMSpNIqtFBWunQbSg3Duld4=;
	b=bj7drh9wJL+uEtYtAMwWI2sQS8iLQE4kqKoyst89YsqIeV38FEH++yemqrq3mnML
	s4H7xPpnUjmPrN64W5gpqinFcUGNJhx15240euo4Yb1+1bpwjBnmz3TzbO6OYg0rZWm
	f3SVWLxL8mU3ie8J+3sQRZHLFwrhzknqWYv/1blA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647927084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RcUgAXWUCvj5ycbwk/TzrMSpNIqtFBWunQbSg3Duld4=;
	b=EmDrJ4Y2ugAHAk38SKJ9iAzHCrRZBxPhckiRDZsNxMewPdM2U74EOdshKWyrWJDq
	kY7KkzAYhs3AntLKGEGwM08LagTkIFRnx2QRqsvZAZOkx5cV6ShVQVaU5dSIBpCdJjq
	LDWWzSigDx0YziS+EOBCeUutU9/UxG1VFal7733I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb01bc6bc-0499a422-6c32-4cd3-ae9a-b54bc417f341-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e49abea53b3bfbf48522c4887ab88402889eea2003dbe1e59f484cb88e9667f2
Date: Tue, 22 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647927084
