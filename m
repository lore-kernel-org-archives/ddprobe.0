Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7BA72F25
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 09:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648288498;
	h=To:Subject:From:Message-Id:Date;
	bh=J6JReOZJDL0cnIPSgUM7uVF6PLSIbfmpdbyiOJsgC2Y=;
	b=iR0sdJiie7OyVFi0DClXhr1TliAMZE8ob8YEa3CfWtBsMkENJBhgEt2imKkfj2//
	8kgYbfIOmmHe99LQVgHIiNla5RBa9THQvqlJ2yDYC3+e2YXCR3Df5E2EfL+cWTYJK84
	v66/WPss/9gQ6R0X6FTi1nzzyxKclZL8wgVo3cqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648288498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J6JReOZJDL0cnIPSgUM7uVF6PLSIbfmpdbyiOJsgC2Y=;
	b=ddtFss86bJ+vy7l0hXDHZSjs5Q1IPHuxRJM4D5ACnj9jj7u0fThad7vignyCaCK4
	lrCLxuIkgJ3yEZwfn9s9rER8sMvz6YluGHBwc20bRfKATRz7dpqK2A63F1gbjZ0Loqv
	Unn+gnIvA2I7JaYMl8jJucvJJDB6dNaDzTIpg5UA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc5a68268-dec7c080-8ec8-4747-974b-c958ffeff821-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1279a29c88b9f9cee80e1f75aa58180f37822ad793f06c2ecff67a19da486107
Date: Sat, 26 Mar 2022 09:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648288498
