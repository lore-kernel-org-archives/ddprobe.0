Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2FB5393
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645273885;
	h=To:Subject:From:Message-Id:Date;
	bh=BnNgjwhTEkf9IgXMbtH61d1WMwlt4BwMunR9BHu35JE=;
	b=MUvNnoGedeN+abY74YRNLo0r7KnOZZWxMWFbYdgyCMRqcGpFGzwMQTrrDO3aO8P/
	DTy+4mN7hBg2CMgxjKkDKUalrjQmNkxmWdxPeqzSLf7pn4iCQ7oErLIjLEos1ro9IxT
	tRzp06JwGXhLhfEtyczHOE1oZ9+MImMMunLQ51pk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645273885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BnNgjwhTEkf9IgXMbtH61d1WMwlt4BwMunR9BHu35JE=;
	b=VTG5HPATvPYQAqWHvg3ktJWfsNEH7jN8UcVlZUk8QuISWuEL4VSTvmdDoiedz90h
	j0/5b8/iBVt0QFL5enrCpWOkJS5KnZRS5ZXVF9XDydXVNFbz4btrRErypvlsTYOH0Wh
	Ror3Z7ma1K9A4FG8fbmNSCrdgYYLcFpiy8Wtkcvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11f728c2-b19360f7-932e-4aad-b1e9-8fc1513b66a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e0ec9ea61b31c6658df5aa7cfdfe10701c5551ad0995de6cf3377b8680bfff6
Date: Sat, 19 Feb 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645273884
