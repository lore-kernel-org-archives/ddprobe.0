Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8226E4C99
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647625284;
	h=To:Subject:From:Message-Id:Date;
	bh=tAIEqteWfNxn5kXiJ1t5+iX+LVkhjxfVdBydKlhUjfc=;
	b=NxSXHS93nrl1ORlzF+ANFBKJprdqBl9DFgF3yePNlU84VfvqTVxSYqx4xm4WLST8
	bW8BbvCpLYhMAvHmkPCJ+PfI4cm1gibur2BywClAQsns7P0xVf0lGfRdQoG8le3shWf
	vSstyab/f4iD1y1bduKB+cRUIbD1rCLUopGuO804=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647625284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tAIEqteWfNxn5kXiJ1t5+iX+LVkhjxfVdBydKlhUjfc=;
	b=LG4qy/q7Un3CAV6LlDI8nsXRJp6p43iURsikgIxRKf3adFVc3SJMT/tkv/ZHxk64
	xAwbUIhmJrZisvdK3i92ynlyUEaUurMag/HG1y8FnK0MtRiowJrVYk8HP7wr4Dri3MN
	7pjreFuLgYzbHjH3eMn7A/GQOXwicxf/nxX9Ax/s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9e1eacb2-7093ea82-f75d-4c82-9358-58e9a704bd21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12c08af4bc256e48be6de906afb9d18be85ba74b212d360b87aff5ed790d3c73
Date: Fri, 18 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647625284
