Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1D173686
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 04:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645848085;
	h=To:Subject:From:Message-Id:Date;
	bh=DpXwHicaJe7vVYsCwq2/rOou3N+zscg8NaRXzw9Ysls=;
	b=BiuZQGAOoCfDjP+XTzIOI0njgxul99HDtjw8LGkZm+LJxZBJ80oWhmoRjuPxzZhc
	cjgGleshaYffeoMlcQ+bM/n14EQ9v/zLC8IHzysNn+viEYxFlttByFu/IrVjP+CAnDc
	V7hBZxpPdnew+KwpOPT0YK/lTBuOcyNHtj1z16BQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645848085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DpXwHicaJe7vVYsCwq2/rOou3N+zscg8NaRXzw9Ysls=;
	b=GpYJdSyf2vOEYFJmoihCYGyv9TfSXHhUFIyMaDrMY+rHaX9sg2qNqDjGbFLiJMhm
	6c4BWDTT0zVvCvTE38AsYnAB17TtwBgkl8LHjPEY6QW0SEz0TS3Zj7FQkRhdPKr6uYq
	taWvXDwWa7fMNfYRoLWSGm5/tEOW9WH7pgjdTHXk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3430c13d-07bfde0b-145e-43c9-8e19-b54656316578-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 819be5b6badb82ef4f47c18497167bcd3eb8e19bfc3c92fd7cbd18351337c07f
Date: Sat, 26 Feb 2022 04:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645848084
