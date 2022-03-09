Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9C7D7E
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646827885;
	h=To:Subject:From:Message-Id:Date;
	bh=mNwdb2q5NO8p1iq7zELCE7/1QCaFCgvoiHj9EiI9I+c=;
	b=WdkLx2XPhjIWW2BgAQmxofQuc0DKFSa3s6OLWoC3Shi+KAdls9cleYjqcANva/pM
	Fqw4I7s/0njNEyDQACOy5Uho2Io7P66EgCjzLteFlT1z3+AV5LdKBCIYNrAQohW7GQQ
	pKYb/qTFqsLo0TUvQbVUaVagySOfzD0XLDkZb9VI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646827885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mNwdb2q5NO8p1iq7zELCE7/1QCaFCgvoiHj9EiI9I+c=;
	b=HchwfBQGy9iEr4GHhetTb41YvFUumC75wKAzKBd+V21HahW04efVfSKD+OLb4m5h
	7G6cMAqD6vcUF8+27i+EpULo2vcDZ7awS0gIonuaOPeUXaPe+IMt/LJFy5/TigQm4+b
	M4aaSowuYOiAXaTLjps8qOm25GIE1HgpSsX1rVcA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6e9750e8-93a60dc1-88e7-492c-a1d8-db0e0e6b710c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03cca1cfa8764814ae4a416dc2419e960725ead91ed6f82a77359339827af11d
Date: Wed, 9 Mar 2022 12:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646827884
