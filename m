Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5DA8A20
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 23:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649548258;
	h=To:Subject:From:Message-Id:Date;
	bh=JtYoj5U8ZN0JLZhelj3N/akMvhcyG9viCenLH+vC86A=;
	b=m7OO+ehAb3UWgsmZ9KSiWpuK6VAboWSUz6gKtxCnoBL6CHvx+qUWt7KMOF/X0ePo
	4O7dZ/eFvwPWf27ImlkFVXtWJky3Kvd74hJUDd0UVuVu2dGLI2dF5Hg1jbI5P2wud+i
	YdV0YJqGihGEsbDSIskCgcLliTbi7KC/k4nM0WEs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649548258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JtYoj5U8ZN0JLZhelj3N/akMvhcyG9viCenLH+vC86A=;
	b=iqDOk+sZurXuOafaj+1ugac8o9SWqhfyHVrEfSIusf9oEqpxhLdfrH66gbgfG31Z
	ALTf7N8YP8FUUU8SqOMeBROtnMkgnyIqa9F2hHrwnGUBMBTL6cHeVsBgJqNptuTcKiy
	D/+E5Pk4UTkXAEWkULyrsKYb+YJlS74NMUrO5s/c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018010bcebec-68c42329-c944-4d1c-8b36-9d09a5a0a5a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0e3e9559dfcf427f18b876ee112c3a57c81e1f9576d285e533058d97959deae
Date: Sat, 9 Apr 2022 23:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649548258
