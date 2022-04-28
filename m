Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3FD136A
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 19:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651172699;
	h=To:Subject:From:Message-Id:Date;
	bh=KLajIH10FYFTcE1WX62NkeUhoMn4EMkLaJIjvPupcJ8=;
	b=PXBLGShLojLHkaMfcOLorh2mMqXrvlGyayRXDZV0NmD84F2kU+IPSVNocd3kot6/
	7uf/+Pr/w/INL3z6xfQ2zGl2iK4jeeqx5u5QvjksQ7u3qQW4DapF76Z4NHM9tqA7vjD
	iw5Hd7iS9qhMwSkbGv2EL0Ss91MTSAHWrJPNRWbs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651172699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KLajIH10FYFTcE1WX62NkeUhoMn4EMkLaJIjvPupcJ8=;
	b=EoT8nIVAao7QfvTOHIoUYpiGxXGhPh0Qk05xPZZySv9nPLy0I/q2bovYMF8II6AF
	TGK+xySvAQxxMY6x5Gpfmxpwh7jbll0iNHBLnUNwmX0lS83eXbsd3brICtJzMhwg1ga
	0YEShhRcX0mLEY2rLHufKT5b3N7UOFMVW79mCvts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180718fe8aa-24e54413-e434-438c-87fb-902e3cc0d195-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7f97967a51aa5937f4dad642b03567a7ae94accc7b77efa86b5a077ad62a8b3
Date: Thu, 28 Apr 2022 19:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651172698
