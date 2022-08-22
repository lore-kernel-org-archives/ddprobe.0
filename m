Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532B0369
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661136652;
	h=To:Subject:From:Message-Id:Date;
	bh=XQK7QdaG0C/fWv3qowLGQrEXMSP+I00oqSAMEjmG03c=;
	b=UATjJRhHQolBOz4TspVGoyUZZvT+Hp8fQ7stspTOfFsXbCct1yBgD3IiNHmUVodG
	lI2KKuA41j+XeQsKC4DdUTwiGx6MNatPOed7M7vUXVoiQH7boA9ULbZepBc7k2ezSEy
	bXkYhv/B5wS+qhBD47wbyixvrfakdcfFcs/nsNuk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661136652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XQK7QdaG0C/fWv3qowLGQrEXMSP+I00oqSAMEjmG03c=;
	b=ixvZ5guthOkOjHITqwK+hOy6sA0LJbMwFKW2fVZf1wXEz+HqIdNLMY/hly1AqVos
	5x5rVv+7uEHrPfszNwqN1tSdW6R7T/hlO94T6jxGpsU0cZ8CmOGbTb+579Alt+eItVa
	gbVPGm3A2pthBLjXU6WbkunRfkSIlIfKXrTzmnzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c375c91f-144afc83-eb28-4cfd-8bfc-885c6280e47c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cffcbdae30610a752ed3fc7807141d98c9a9f937eb2538c8faef1be3fb34bc86
Date: Mon, 22 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661136652
