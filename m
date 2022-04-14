Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF963225
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 21:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649970178;
	h=To:Subject:From:Message-Id:Date;
	bh=Slrh67mPIE4Wk3FAkpj0OyFkR9ZXLYfP3egB6Wa4m34=;
	b=lw9xUxQ7TrLP0QKsaabbNKN6G8il3VivZXLLUPbyqRl7/oKidV0axxHJ+rBGffCI
	QuKucF5lZoRIwXJvTvRhYlaodckwR7afGzwdq6toIe7ZHRK3O2jkeoYs3ZFOs9HUrWg
	YnLHfltyAMtmfUfpS4EnNdc9+zJ0u8MGJLaEcfzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649970178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Slrh67mPIE4Wk3FAkpj0OyFkR9ZXLYfP3egB6Wa4m34=;
	b=QXK5uwgAu20JzMyOsT/NdWjzdcnqIS6Y5+GIkYFhVLfndXWkog3qpxed5EzZoYJn
	1bTzP3hZGa7F8YMvkEUsYmJYA9mFRRCZyYIeSaBsFVxLjarCvLU9mWstHkqOS0G8YbP
	fllj8Mj4jPDzVaMPYpOmvZZ4QBRQmyAROe8KdE8c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029e2e89f-f2062271-d7fd-4334-9ba4-84d11473c8ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1db190db58bc4324f47dfcff8140c6a1789aef3768c71d2f32ce71fc67b582ab
Date: Thu, 14 Apr 2022 21:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649970178
