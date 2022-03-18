Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BCF48D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647604884;
	h=To:Subject:From:Message-Id:Date;
	bh=DyIN4hfAXJKhfgmoHYacGPMS0388+gK8JfYAD9wUDCk=;
	b=DjbsDuNbvJLxfPslAgSlNhKAXRqSlimBppJFZDUaWs/hATBzdaYp4teLqYT4fu68
	yOO+zu+nxM6NvBph95cBkuRZBJqp4o/qGEDhSW8zYRzGsQZN7m/peA84X+pRjNirDEK
	xers1QJMutsuYwmkXQdGy56lggm0GFELECsXyTf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647604884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DyIN4hfAXJKhfgmoHYacGPMS0388+gK8JfYAD9wUDCk=;
	b=e1G5wg5mJgwCy+UybmiPywMbYyNFweJ7mq6aXIBhyTCc3YmktMs1+YlTp+O1AC2E
	pR+T6e/F9XMYSU4b0DM4AW2b3WIcODkJKZF0NR+zLJ4Rvmf9AvyXrI9vHHKEPBsQXSy
	DNaNoYfL4Gwzs4Gj+UQJ6FhVU+WrqRzFueqCvjHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9ce76527-32d762eb-9879-4511-a212-e71d2b02fc5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ade96408369fb66c32520b8dfd2c3c947175fddbc27d5aea79e1b970726365c6
Date: Fri, 18 Mar 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647604884
