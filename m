Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B0407A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 04:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655094299;
	h=To:Subject:From:Message-Id:Date;
	bh=q4d42JR2yaVshi97qhVRc/b0vzYo6Ol2yLcsFocGqcU=;
	b=YNulK1jfvuT550DkteZNfVlEaxZMBRC3eN5FQB3pjlaIJEoacSsq4w2HkStyf7I3
	3RMZqniGnUdELMfMVY62MWkfN2+7073F3OWTvR4LlCJAQ1vpZNqU5Fy1E2qIj7cQ4az
	GfiSAVrD6qeOQo3ZV3rKaU8s0CytjchQsft0u2GE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655094299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q4d42JR2yaVshi97qhVRc/b0vzYo6Ol2yLcsFocGqcU=;
	b=kzX6frLGc/HISMbSeEtYpdFu2f8v6pPHxELVG2FHrfRVP7OtPl+P7wvcdFFZpThA
	7HhukqunqtoeKqeJCVDKSkWj/bFgrLHSPRUnQhRGf4JLjwmlqwm42ezgQTi3LF35KUu
	eDhozrgBNyw3j7vtI9OikF912w7ZgU4gYYwI83uM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b4eca9d-bb8a851f-d700-4774-b100-389e4e400f1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6faa9b568fbfd8d1390017f27b87b6d7cb2e0db5c6f86e31d297bce988c006ba
Date: Mon, 13 Jun 2022 04:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655094299
