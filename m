Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C3DA62E
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660292452;
	h=To:Subject:From:Message-Id:Date;
	bh=bABRjUNyYGNGwt7nwYe1ETcZMilP6bN2jFiZTPOunFI=;
	b=PXJlcxRUCMU/fROKa5c+ZiRMJ0q+gHElC6xeoxeQt5o7KO9+5iR/BecWtB4hdvbB
	6eo2eT8sG1utkhlrhhw47cGcjMgt0NQQCHxcU5HTEFFJNC2kOf6hy/eoE0dxKBe+yp1
	h3fBF+5l9O/eVqqO3JB+jykqdNkQc8wXtoFMgOCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660292452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bABRjUNyYGNGwt7nwYe1ETcZMilP6bN2jFiZTPOunFI=;
	b=i9xX+/RTE7yc9LCF9swhfDfEe0wYrPWBL/sJYCk3O8mGMjzWmdrISe74PylMrguJ
	153z1Ewdpdb2lp9zPTPgwsxZW4nQ+oUiBxYOvN/HoCugevu4Y0/rMLCMi992gwkORY3
	/E8xe8IWqQooY6c5LPeM/k4jCZsK3uZFSA1LhPBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182912450e0-4704d1c4-0e4e-4478-80b9-952b55f93d78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b29e77d1562b2e591152c4b83cc2c71a5a5ce145406cc78ecd5cb8220a3674b8
Date: Fri, 12 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660292452
