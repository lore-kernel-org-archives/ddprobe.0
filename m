Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6449FC7C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 15:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646406984;
	h=To:Subject:From:Message-Id:Date;
	bh=sn0IuXNhInQRMiXdVj7VIaI09uvycZ0KfORf5KpSlYU=;
	b=klgUjax2nT4uXllCWQ9t5JI/NYbb+1BMaLeGn0jwx+P3nd60gWmxKJSBSQCrUYSc
	Ta+KF2H1VyjMDtF3C1EK0/9dsw7u9tWjQxzAAf3ly1l00OyVrh+6njM/yUcwSNEFyeE
	TuWfVlA04VIy+1w2VDqYiTViSPNkdqmvRzrqX1pI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646406984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sn0IuXNhInQRMiXdVj7VIaI09uvycZ0KfORf5KpSlYU=;
	b=ha30XiIkPZR/WZAEqdBHkdmt/cOeqEGZlIa4B8FfT7HgzSUTqMzYg/aqnFkQxtLI
	YPxeJi8luy+RX3fVsuGDZ4wP0oJA2TY5RhmzpqR2q1OZ3TFQCXakTaez0eLxRaGBSIT
	ivH37pGaSe7laH2XtCzWmy+PnoWrBEf1yV1RsgtE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5580e405-70eb2ad9-993e-443a-bbb4-f0414dc8087e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f9dceee84857fec125789c167fa5ebadd66ed10ac01325bfb4d86dcfa026fa4
Date: Fri, 4 Mar 2022 15:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646406984
