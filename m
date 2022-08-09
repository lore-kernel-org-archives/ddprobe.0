Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4A915A7
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660050652;
	h=To:Subject:From:Message-Id:Date;
	bh=9PuZips8rPluoaBGjPIyt100ebeWNhICXwGgRI5ugRk=;
	b=bHMbZi7yc6sOE162Ebub1KhmjQMQH9hffp8TZcNd/4rhQ9dy7yqa4GuziU3sw3nK
	GUy6I2VkXIbCrxcYAJApqiNu8c0PKbiHyPqjcXxmdoQ+u40RnYgQCjTkFKzHEQ2AyvS
	dzU985HIskj3gH0qi6LKkO2PaE3ic+1RWgjEZ1RM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660050652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9PuZips8rPluoaBGjPIyt100ebeWNhICXwGgRI5ugRk=;
	b=XDYCcP0IMDtXXx0cg5VyfvrZErxIdtdmP9pPybgWAS45fERwXGc+DXAIwyc1WmYS
	XOIIG6Zo4pic8YX46hRYSpHzIs3TaqytdK0NU/EDDNFiYVq6LFUnkqG4x3UtWhcKlbu
	w7aLyXa5KX8k/5VVoLM+F1fV3YpP0zg/n0aWGtBE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018282babd6d-ccc93433-a526-494b-9cf1-2b07829695b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1709202daa080fcd02a9450dce4d0287f630c37187cf5befc6f6699131d817f
Date: Tue, 9 Aug 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660050652
