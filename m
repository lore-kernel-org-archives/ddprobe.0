Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D8517CA
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 04:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649996098;
	h=To:Subject:From:Message-Id:Date;
	bh=bLQ+Wd+aIEbfpnNPwKq0YXx5/tQeTHXWhBYagBtpvUI=;
	b=DFeKrZlQY6zi5uIHjnwxEFnKmIQ+/Fiy8UQaV6Dc3tBNUYImOdH2zrYDgYECFLCL
	2TgIuLwoYHINCfTp6lpnnul64OUJVYWu7Tl9eA0i+Ax2H6keaRxBvxRRzjTsWrk3G80
	6jV+7SP6+u31q9+LNt6XJFA47wHbD4+L1ehVGxZ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649996098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bLQ+Wd+aIEbfpnNPwKq0YXx5/tQeTHXWhBYagBtpvUI=;
	b=EVNiFDlWUHFFAfa5zT1yGthAJ+StHpOlwSr+Vdrd5GjzxYbPfP8dPOSREzysc8Xl
	kbxOOQpEIA+wwclCxfBL3poebqvC8lnH0hmsNmL33lmbONCapwCGO1AtxMgFM73GWMZ
	MFkZ9XgGXpqMy27mbQGoYGZeUF452DwQCQbXfzdA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b6e6ad4-d915e6e4-5dd8-4a2d-b984-d67e55c16c33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d22c6bd9db8011a7f1754aee076510df5d8a666061723932a645869826904fa3
Date: Fri, 15 Apr 2022 04:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649996098
