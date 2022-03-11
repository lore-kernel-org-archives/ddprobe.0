Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E5167E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646987484;
	h=To:Subject:From:Message-Id:Date;
	bh=gEhJPGIXhsGRR+uIRkzMZNli1tH8zg+0J4bY9H4OwMI=;
	b=DfQstEFhx21+tBwDOUZ9gdJZTp09dCCQtTJD6t1jH7UTRzAlxUWIHWifXaCpYF44
	oRhOzIA5TYQsd9ptYMljumLmgz4WP5apmUuevt2j3uuSjlXqxvYxDyv1nxVAOuGWtlP
	CgoKEEDc2/YQzCKA1h9kESepWg962eSl5fioZqcw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646987484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gEhJPGIXhsGRR+uIRkzMZNli1tH8zg+0J4bY9H4OwMI=;
	b=NHP+XXadLUXgA8nOLes4xr6nbdtcr8JSCIBMzICloZeBvoYq8SA8SQ9+QIWM8Ihg
	p6GX5oEnxluG4iIoqjw7t1ZyR/5LE/0E5FmC+P596GAyuW0szI1lxnxmgjyxEO/FkM5
	FCBxh8aX5143TcAOqt6+fR7DY+6KtBX2qQeg4vfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f781a9e6e-a86f21a8-543d-488f-83e1-c035c3f4782b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9a2aced0893dbd7a08459944bee4ef5c4677af4e1f505f915341697b0adaa6b1
Date: Fri, 11 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646987484
